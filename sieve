const ll N=200000+6;
bool isPrime[N];
void sieve(){
    fill(isPrime,isPrime+N,1);
    isPrime[0]=isPrime[1]=0;
    for (ll i=2; i*i<N;++i) {
        if (isPrime[i]) {
            for (ll j=i*i;j<N;j+=i) isPrime[j]=0;
        }
    }
}
