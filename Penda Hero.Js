(function() {
    const SIDEBAR_ID = 'perplexity-sidebar';
    const TOGGLE_BTN_ID = 'perplexity-toggle';
    const PERPLEXITY_URL = 'https://www.perplexity.ai/';
    const MIN_WIDTH = 200;
    const MAX_WIDTH = 400;

    let sidebarVisible = localStorage.getItem('perplexitySidebarVisible') === 'true';
    let sidebarWidth = parseInt(localStorage.getItem('perplexitySidebarWidth')) || 300;

    if (document.getElementById(SIDEBAR_ID)) {
        return;
    }

    function createStyles() {
        const style = document.createElement('style');
        style.textContent = `
            #${SIDEBAR_ID} {
                position: fixed;
                top: 0;
                right: ${sidebarVisible ? '0' : '-' + sidebarWidth + 'px'};
                width: ${sidebarWidth}px;
                height: 100%;
                background: #fff;
                box-shadow: -2px 0 5px rgba(0,0,0,0.2);
                transition: right 0.3s ease;
                z-index: 9999;
                font-family: Arial, sans-serif;
            }
            #${SIDEBAR_ID} .resize-handle {
                position: absolute;
                left: 0;
                top: 0;
                bottom: 0;
                width: 5px;
                cursor: ew-resize;
                background-color: #ccc;
            }
            #${SIDEBAR_ID} .close-btn {
                position: absolute;
                right: 10px;
                top: 10px;
                cursor: pointer;
                font-size: 20px;
                color: #555;
            }
            #${SIDEBAR_ID} .title {
                padding: 10px;
                background-color: #f0f0f0;
                border-bottom: 1px solid #ddd;
                text-align: center;
                font-weight: bold;
            }
            #${SIDEBAR_ID} .content {
                padding: 20px;
                text-align: center;
            }
            #${SIDEBAR_ID} .open-perplexity-btn {
                padding: 10px 20px;
                background: #007bff;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 20px;
            }
            #${TOGGLE_BTN_ID} {
                position: fixed;
                right: 20px;
                bottom: 20px;
                z-index: 10000;
                padding: 10px 20px;
                background: #007bff;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }
        `;
        document.head.appendChild(style);
    }

    function createSidebar() {
        const sidebar = document.createElement('div');
        sidebar.id = SIDEBAR_ID;

        const title = document.createElement('div');
        title.className = 'title';
        title.textContent = 'Perplexity AI';

        const closeBtn = document.createElement('span');
        closeBtn.textContent = '×';
        closeBtn.className = 'close-btn';
        closeBtn.onclick = toggleSidebar;

        const resizeHandle = document.createElement('div');
        resizeHandle.className = 'resize-handle';

        const content = document.createElement('div');
        content.className = 'content';
        content.innerHTML = '<p>Click the button below to open Perplexity AI in a new window.</p>';

        const openBtn = document.createElement('button');
        openBtn.className = 'open-perplexity-btn';
        openBtn.textContent = 'Open Perplexity AI';
        openBtn.onclick = () => window.open(PERPLEXITY_URL, '_blank');

        content.appendChild(openBtn);

        sidebar.appendChild(title);
        sidebar.appendChild(closeBtn);
        sidebar.appendChild(resizeHandle);
        sidebar.appendChild(content);

        document.body.appendChild(sidebar);

        initResizing(resizeHandle);
    }

    function createToggleButton() {
        const btn = document.createElement('button');
        btn.id = TOGGLE_BTN_ID;
        btn.textContent = 'Toggle Perplexity AI';
        btn.onclick = toggleSidebar;
        document.body.appendChild(btn);
    }

    function toggleSidebar() {
        const sidebar = document.getElementById(SIDEBAR_ID);
        sidebarVisible = !sidebarVisible;
        sidebar.style.right = sidebarVisible ? '0' : '-' + sidebarWidth + 'px';
        localStorage.setItem('perplexitySidebarVisible', sidebarVisible);
    }

    function initResizing(handle) {
        let startX, startWidth;

        function startResizing(e) {
            startX = e.clientX;
            startWidth = parseInt(document.defaultView.getComputedStyle(document.getElementById(SIDEBAR_ID)).width, 10);
            document.documentElement.addEventListener('mousemove', resize);
            document.documentElement.addEventListener('mouseup', stopResizing);
        }

        function resize(e) {
            const width = startWidth - (e.clientX - startX);
            if (width >= MIN_WIDTH && width <= MAX_WIDTH) {
                sidebarWidth = width;
                document.getElementById(SIDEBAR_ID).style.width = width + 'px';
            }
        }

        function stopResizing() {
            document.documentElement.removeEventListener('mousemove', resize);
            document.documentElement.removeEventListener('mouseup', stopResizing);
            localStorage.setItem('perplexitySidebarWidth', sidebarWidth);
        }

        handle.addEventListener('mousedown', startResizing);
    }

    createStyles();
    createSidebar();
    createToggleButton();
})();
