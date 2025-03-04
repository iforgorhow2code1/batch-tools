(function() {
    const SIDEBAR_ID = 'penda-hero-sidebar';
    const TOGGLE_BTN_ID = 'penda-hero-toggle';
    const URL = 'https://www.perplexity.ai/';
    const MIN_WIDTH = 300;
    const MAX_WIDTH = 800;

    let sidebarVisible = localStorage.getItem('pendaHeroSidebarVisible') === 'true';
    let sidebarWidth = parseInt(localStorage.getItem('pendaHeroSidebarWidth')) || 400;

    function createStyles() {
        const style = document.createElement('style');
        style.textContent = `
            #${SIDEBAR_ID} {
                position: fixed;
                top: 0;
                right: ${sidebarVisible ? '0' : '-' + sidebarWidth + 'px'};
                width: ${sidebarWidth}px;
                height: 100%;
                background: #2c3e50;
                box-shadow: -2px 0 5px rgba(0,0,0,0.2);
                transition: right 0.3s ease;
                z-index: 9999;
            }
            #${SIDEBAR_ID} iframe {
                width: 100%;
                height: calc(100% - 60px);
                border: none;
            }
            #${SIDEBAR_ID} .resize-handle {
                position: absolute;
                left: 0;
                top: 0;
                bottom: 0;
                width: 5px;
                cursor: ew-resize;
                background: #34495e;
            }
            #${SIDEBAR_ID} .close-btn {
                position: absolute;
                right: 10px;
                top: 30px;
                cursor: pointer;
                color: #ecf0f1;
                font-size: 24px;
            }
            #${SIDEBAR_ID} .title {
                padding: 10px;
                background-color: #34495e;
                border-bottom: 1px solid #2c3e50;
                text-align: center;
                color: #ecf0f1;
                font-family: Arial, sans-serif;
                font-size: 18px;
            }
            #${TOGGLE_BTN_ID} {
                position: fixed;
                right: 20px;
                bottom: 20px;
                z-index: 10000;
                padding: 10px 15px;
                background: #3498db;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-family: Arial, sans-serif;
                font-size: 14px;
                transition: background 0.3s ease;
            }
            #${TOGGLE_BTN_ID}:hover {
                background: #2980b9;
            }
            .loading-overlay {
                position: absolute;
                top: 60px;
                left: 0;
                right: 0;
                bottom: 0;
                background: rgba(44, 62, 80, 0.8);
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 18px;
                color: #ecf0f1;
                font-family: Arial, sans-serif;
            }
        `;
        document.head.appendChild(style);
    }

    function createSidebar() {
        const sidebar = document.createElement('div');
        sidebar.id = SIDEBAR_ID;
        
        const title = document.createElement('div');
        title.className = 'title';
        title.textContent = 'Penda Hero';
        
        const closeBtn = document.createElement('span');
        closeBtn.textContent = '×';
        closeBtn.className = 'close-btn';
        closeBtn.onclick = toggleSidebar;
        
        const resizeHandle = document.createElement('div');
        resizeHandle.className = 'resize-handle';
        
        const iframe = document.createElement('iframe');
        iframe.src = URL;
        
        const loadingOverlay = document.createElement('div');
        loadingOverlay.className = 'loading-overlay';
        loadingOverlay.textContent = 'Loading Penda Hero...';
        
        sidebar.appendChild(title);
        sidebar.appendChild(closeBtn);
        sidebar.appendChild(resizeHandle);
        sidebar.appendChild(iframe);
        sidebar.appendChild(loadingOverlay);
        
        document.body.appendChild(sidebar);
        
        iframe.onload = () => {
            loadingOverlay.style.display = 'none';
            customizeIframeContent(iframe);
        };
        
        initResizing(resizeHandle);
    }

    function customizeIframeContent(iframe) {
        try {
            const iframeDoc = iframe.contentDocument || iframe.contentWindow.document;
            const style = iframeDoc.createElement('style');
            style.textContent = `
                body {
                    background-color: #34495e !important;
                    color: #ecf0f1 !important;
                }
                .sidebar {
                    background-color: #2c3e50 !important;
                }
                input, textarea {
                    background-color: #465c71 !important;
                    color: #ecf0f1 !important;
                    border: 1px solid #5a7a9a !important;
                }
                button {
                    background-color: #3498db !important;
                    color: #ecf0f1 !important;
                }
                a {
                    color: #3498db !important;
                }
            `;
            iframeDoc.head.appendChild(style);
        } catch (e) {
            console.error('Failed to customize iframe content:', e);
        }
    }

    function createToggleButton() {
        const btn = document.createElement('button');
        btn.id = TOGGLE_BTN_ID;
        btn.textContent = 'Toggle Penda Hero';
        btn.onclick = toggleSidebar;
        document.body.appendChild(btn);
    }

    function toggleSidebar() {
        const sidebar = document.getElementById(SIDEBAR_ID);
        sidebarVisible = !sidebarVisible;
        sidebar.style.right = sidebarVisible ? '0' : '-' + sidebarWidth + 'px';
        localStorage.setItem('pendaHeroSidebarVisible', sidebarVisible);
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
            localStorage.setItem('pendaHeroSidebarWidth', sidebarWidth);
        }

        handle.addEventListener('mousedown', startResizing);
    }

    createStyles();
    createSidebar();
    createToggleButton();
})();
