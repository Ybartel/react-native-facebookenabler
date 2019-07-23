using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Facebook.Enable.RNFacebookEnable
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNFacebookEnableModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNFacebookEnableModule"/>.
        /// </summary>
        internal RNFacebookEnableModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNFacebookEnable";
            }
        }
    }
}
