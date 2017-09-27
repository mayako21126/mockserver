'use strict';
/**
 * db config
 * @type {Object}
 */
export default {
    type: 'mysql',
    adapter: {
        mysql: {
            host: '192.168.2.204',
            port: '3306',
            database: 'mockserver',
            user: 'root',
            password: 'Dxh2017$$',
            prefix: 'mock_',
            encoding: 'UTF8MB4_GENERAL_CI'
        },

    }
};