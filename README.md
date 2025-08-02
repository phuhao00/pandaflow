# PandaFlow

![PandaFlow Demo](https://github.com/phuhao00/pandaflow/raw/main/docs/drawflow.gif)

**PandaFlow** is an enhanced version of Drawflow - a powerful, lightweight JavaScript library for creating visual workflow editors and data flow diagrams.

Built on top of the robust Drawflow library, PandaFlow adds enhanced features including dynamic module creation, improved UI/UX, and streamlined interface design.

🚀 **[LIVE DEMO](http://localhost:8080)** *(when running locally)*

🎨 **Enhanced UI with dynamic module management**

## ✨ Key Features

### Core Functionality (Inherited from Drawflow)
- **Drag & Drop Nodes** - Intuitive node placement
- **Multiple Inputs/Outputs** - Complex workflow support  
- **Multiple Connections** - Connect nodes in various ways
- **Node Management** - Add, delete, and modify nodes
- **Connection Routing** - Smart connection paths with rerouting
- **Data Synchronization** - Real-time data flow between nodes
- **Zoom Controls** - Zoom in/out for better navigation
- **Module Support** - Organize workflows into modules

### PandaFlow Enhancements
- **🆕 Dynamic Module Creation** - Add new modules on-the-fly with a simple + button
- **🎯 Cleaner Interface** - Removed welcome panel for streamlined experience
- **✅ Input Validation** - Prevents duplicate module names and empty inputs
- **🎨 Enhanced Styling** - Modern UI with hover effects and smooth transitions
- **📱 Responsive Design** - Works seamlessly across different screen sizes

## 📦 Installation & Setup

### Using Docker (Recommended)

1. **Clone the repository:**
   ```bash
   git clone https://github.com/phuhao00/pandaflow.git
   cd pandaflow
   ```

2. **Build and run with Docker:**
   ```bash
   docker-compose build
   docker-compose up -d
   ```

3. **Access the application:**
   ```
   http://localhost:8080
   ```

### Manual Setup

1. **Clone and install dependencies:**
   ```bash
   git clone https://github.com/phuhao00/pandaflow.git
   cd pandaflow
   npm install
   ```

2. **Run the development server:**
   ```bash
   npm start
   ```

## 🎮 Usage Guide

### Mouse and Keyboard Controls
- **🖱️ Left Click + Drag** - Move nodes around the canvas
- **🖱️ Right Click** - Access context menu options  
- **🎹 Delete Key** - Remove selected nodes or connections
- **🔍 Ctrl + Mouse Wheel** - Zoom in/out
- **📱 Touch Support** - Full mobile device compatibility

### Creating Modules
1. Click the green **+** button next to "Other Module"
2. Enter a unique module name
3. Click "Add Module" to create
4. The new module will appear in the tab bar

### Adding Nodes
1. Select a module from the tab bar
2. Drag any node from the left sidebar
3. Drop it onto the canvas
4. Configure the node properties as needed

### Connecting Nodes
1. Click on an output port (right side of node)
2. Drag to an input port (left side of target node)
3. Release to create the connection

## 🏗️ Architecture

### Core Components
- **Editor Core** - Built on Drawflow engine
- **Node System** - Extensible node types (Facebook, Slack, GitHub, etc.)
- **Module Manager** - Dynamic module creation and switching
- **UI Layer** - Enhanced interface with modern styling
- **Docker Integration** - Containerized deployment

### Supported Node Types
- **📘 Facebook** - Social media integration
- **💬 Slack** - Team communication
- **🐙 GitHub** - Version control integration  
- **📱 Telegram** - Messaging bot
- **☁️ AWS** - Cloud services
- **📄 File Log** - Logging functionality
- **💾 Google Drive** - Cloud storage
- **📧 Email** - Email notifications
- **🔧 Template** - Custom templates
- **🔀 Multiple I/O** - Complex routing
- **🎨 Personalized** - Custom nodes

## 🔧 Configuration

### Environment Variables
```bash
PORT=8080                    # Application port
NODE_ENV=production         # Environment mode
```

### Docker Configuration
The included `docker-compose.yml` provides:
- **Nginx** web server on Alpine Linux
- **Port mapping** 8080:80
- **Volume mounting** for development
- **Optimized** for production deployment

## 🚀 Development

### Project Structure
```
pandaflow/
├── src/                    # Source files
│   ├── drawflow.js        # Core library
│   └── drawflow.css       # Styling
├── docs/                   # Documentation and assets
├── dist/                   # Built files
├── index.html             # Main application
├── docker-compose.yml     # Docker configuration
├── Dockerfile             # Container definition
└── package.json           # Dependencies
```

### Building
```bash
# Install dependencies
npm install

# Build for production
npm run build

# Run development server
npm run dev
```

## 📚 API Reference

### Creating the Editor
```javascript
const editor = new Drawflow(document.getElementById('drawflow'));
editor.start();
```

### Adding Modules Programmatically
```javascript
// Add a new module
editor.addModule('MyModule');

// Switch to module
editor.changeModule('MyModule');
```

### Node Management
```javascript
// Add a node
editor.addNode('nodeName', inputs, outputs, pos_x, pos_y, 'nodeClass', data, html);

// Remove a node
editor.removeNodeId('nodeId');
```

### Events
```javascript
editor.on('nodeCreated', function(id) {
    console.log('Node created:', id);
});

editor.on('moduleCreated', function(name) {
    console.log('Module created:', name);
});
```

## 🤝 Contributing

We welcome contributions! Please follow these steps:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)  
5. **Open** a Pull Request

### Development Guidelines
- Follow existing code style
- Add tests for new features
- Update documentation as needed
- Ensure Docker builds successfully

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **[Drawflow](https://github.com/jerosoler/Drawflow)** - The excellent foundation library by Jero Soler
- **[SweetAlert2](https://sweetalert2.github.io/)** - Beautiful modal dialogs
- **[Font Awesome](https://fontawesome.com/)** - Icon library
- **Alpine Linux** & **Nginx** - Lightweight containerization

## 📞 Support

- **🐛 Bug Reports**: [GitHub Issues](https://github.com/phuhao00/pandaflow/issues)
- **💡 Feature Requests**: [GitHub Discussions](https://github.com/phuhao00/pandaflow/discussions)
- **📧 Contact**: [Your Email]

---

**PandaFlow** - Making workflow creation simple, powerful, and beautiful! 🐼✨
