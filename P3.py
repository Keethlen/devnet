@app.route('/login/v1', methods=['GET', 'POST'])
def login_v1():
    error = None
    if request.method == 'POST':
        if verify_plain(request.form['username'], request.form['password']):
            error = 'login success'
        else:
            error = 'Invalid username/password' 
    else:
        error = 'Invalid method'
    return error

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, ssl_context='adhoc')