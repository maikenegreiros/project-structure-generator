module.exports = {
    entry: {
		cover: './sources/ts/main.ts'
    },
    mode: 'development',
    resolve: {
    	extensions: ['.js','.ts']
    },
    output: {
    	path: __dirname + '/public/assets/js/',
    	filename: '[name]-bundle.js'
    },
    module: {
    	rules: [
    		{
    			test: /\.ts$/,
				loader: 'ts-loader',
				options: { allowTsInNodeModules: true }
    		}
    	]
    }
}
