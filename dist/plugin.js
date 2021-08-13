var capacitorSafeArea = (function (exports, core) {
    'use strict';

    const SafeArea = core.registerPlugin('SafeArea', {
        web: () => Promise.resolve().then(function () { return web; }).then(m => new m.SafeAreaWeb()),
    });

    class SafeAreaWeb extends core.WebPlugin {
        async getSafeAreaInsets() {
            return {
                insets: {
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                }
            };
        }
    }

    var web = /*#__PURE__*/Object.freeze({
        __proto__: null,
        SafeAreaWeb: SafeAreaWeb
    });

    exports.SafeArea = SafeArea;

    Object.defineProperty(exports, '__esModule', { value: true });

    return exports;

}({}, capacitorExports));
//# sourceMappingURL=plugin.js.map
