# Displaying versions
node -v
firebase --version
hugo version

# Get Firebase Token
if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing." /
    echo "You can get it using command 'firebase login:ci' and then set it in Github Secrets as FIREBASE_TOKEN variable."
    exit 1
fi

# Generate hugo site
# commented out to only deploy site
# hugo

# Deploy it on Firebase
firebase use --token "${FIREBASE_TOKEN}"
firebase deploy --non-interactive --token "${FIREBASE_TOKEN}"
