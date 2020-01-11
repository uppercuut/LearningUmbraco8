//------------------------------------------------------------------------------
// <auto-generated>
//   This code was generated by a tool.
//
//    Umbraco.ModelsBuilder v8.1.0
//
//   Changes to this file will be lost if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Web;
using Umbraco.Core.Models;
using Umbraco.Core.Models.PublishedContent;
using Umbraco.Web;
using Umbraco.ModelsBuilder;
using Umbraco.ModelsBuilder.Umbraco;

[assembly: PureLiveAssembly]
[assembly:ModelsBuilderAssembly(PureLive = true, SourceHash = "b895ed09922c1165")]
[assembly:System.Reflection.AssemblyVersion("0.0.0.8")]

namespace Umbraco.Web.PublishedModels
{
	/// <summary>LandingPage</summary>
	[PublishedModel("landingPage")]
	public partial class LandingPage : PublishedContentModel, IWebPageBase
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "landingPage";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<LandingPage, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public LandingPage(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// BodyText
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("bodyText")]
		public string BodyText => this.Value<string>("bodyText");

		///<summary>
		/// BodyTextColor
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("bodyTextColor")]
		public string BodyTextColor => this.Value<string>("bodyTextColor");

		///<summary>
		/// CssClasses
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("cssClasses")]
		public string CssClasses => this.Value<string>("cssClasses");

		///<summary>
		/// FooterUrls
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("footerUrls")]
		public IEnumerable<Umbraco.Web.Models.Link> FooterUrls => this.Value<IEnumerable<Umbraco.Web.Models.Link>>("footerUrls");

		///<summary>
		/// Imagesrc
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("imagesrc")]
		public IPublishedContent Imagesrc => this.Value<IPublishedContent>("imagesrc");

		///<summary>
		/// MainImageCropper
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("mainImageCropper")]
		public Umbraco.Core.PropertyEditors.ValueConverters.ImageCropperValue MainImageCropper => this.Value<Umbraco.Core.PropertyEditors.ValueConverters.ImageCropperValue>("mainImageCropper");

		///<summary>
		/// Multi Css Classes
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("multiCssClasses")]
		public IEnumerable<string> MultiCssClasses => this.Value<IEnumerable<string>>("multiCssClasses");

		///<summary>
		/// RTEBodyText
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("rTEBodyText")]
		public IHtmlString RTebodyText => this.Value<IHtmlString>("rTEBodyText");

		///<summary>
		/// SliderLanding
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("sliderLanding")]
		public IEnumerable<SliderItems> SliderLanding => this.Value<IEnumerable<SliderItems>>("sliderLanding");

		///<summary>
		/// testing prop
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("testingProp")]
		public string TestingProp => this.Value<string>("testingProp");

		///<summary>
		/// Meta Tags
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("metaTags")]
		public string MetaTags => WebPageBase.GetMetaTags(this);
	}

	/// <summary>Personal</summary>
	[PublishedModel("personal")]
	public partial class Personal : PublishedContentModel, IMainConfig
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "personal";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Personal, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public Personal(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Show in main Menu: Check when you want to show this item at the main menu
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("showInMainMenu")]
		public bool ShowInMainMenu => MainConfig.GetShowInMainMenu(this);
	}

	/// <summary>Home</summary>
	[PublishedModel("home")]
	public partial class Home : PublishedContentModel, IMainConfig
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "home";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Home, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public Home(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Show in main Menu: Check when you want to show this item at the main menu
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("showInMainMenu")]
		public bool ShowInMainMenu => MainConfig.GetShowInMainMenu(this);
	}

	/// <summary>Business</summary>
	[PublishedModel("business")]
	public partial class Business : PublishedContentModel, IMainConfig, IWebPageBase
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "business";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Business, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public Business(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Show in main Menu: Check when you want to show this item at the main menu
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("showInMainMenu")]
		public bool ShowInMainMenu => MainConfig.GetShowInMainMenu(this);

		///<summary>
		/// Meta Tags
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("metaTags")]
		public string MetaTags => WebPageBase.GetMetaTags(this);
	}

	// Mixin Content Type with alias "webPageBase"
	/// <summary>WebPageBase</summary>
	public partial interface IWebPageBase : IPublishedContent
	{
		/// <summary>Meta Tags</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		string MetaTags { get; }
	}

	/// <summary>WebPageBase</summary>
	[PublishedModel("webPageBase")]
	public partial class WebPageBase : PublishedContentModel, IWebPageBase
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "webPageBase";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<WebPageBase, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public WebPageBase(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Meta Tags
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("metaTags")]
		public string MetaTags => GetMetaTags(this);

		/// <summary>Static getter for Meta Tags</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static string GetMetaTags(IWebPageBase that) => that.Value<string>("metaTags");
	}

	/// <summary>LandingPageV2</summary>
	[PublishedModel("landingPageV2")]
	public partial class LandingPageV2 : WebPageBase
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "landingPageV2";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<LandingPageV2, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public LandingPageV2(IPublishedContent content)
			: base(content)
		{ }

		// properties
	}

	/// <summary>Slider Items</summary>
	[PublishedModel("sliderItems")]
	public partial class SliderItems : PublishedElementModel
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "sliderItems";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<SliderItems, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public SliderItems(IPublishedElement content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// BackGroundImage
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("backGroundImage")]
		public IPublishedContent BackGroundImage => this.Value<IPublishedContent>("backGroundImage");

		///<summary>
		/// desc
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("desc")]
		public string Desc => this.Value<string>("desc");
	}

	/// <summary>FAQs</summary>
	[PublishedModel("fAQs")]
	public partial class FAqs : PublishedContentModel, IMainConfig
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "fAQs";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<FAqs, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public FAqs(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Show in main Menu: Check when you want to show this item at the main menu
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("showInMainMenu")]
		public bool ShowInMainMenu => MainConfig.GetShowInMainMenu(this);
	}

	// Mixin Content Type with alias "mainConfig"
	/// <summary>MainConfig</summary>
	public partial interface IMainConfig : IPublishedContent
	{
		/// <summary>Show in main Menu</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		bool ShowInMainMenu { get; }
	}

	/// <summary>MainConfig</summary>
	[PublishedModel("mainConfig")]
	public partial class MainConfig : PublishedContentModel, IMainConfig
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "mainConfig";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Content;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<MainConfig, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public MainConfig(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Show in main Menu: Check when you want to show this item at the main menu
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("showInMainMenu")]
		public bool ShowInMainMenu => GetShowInMainMenu(this);

		/// <summary>Static getter for Show in main Menu</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static bool GetShowInMainMenu(IMainConfig that) => that.Value<bool>("showInMainMenu");
	}

	/// <summary>Folder</summary>
	[PublishedModel("Folder")]
	public partial class Folder : PublishedContentModel
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "Folder";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Media;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Folder, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public Folder(IPublishedContent content)
			: base(content)
		{ }

		// properties
	}

	/// <summary>Image</summary>
	[PublishedModel("Image")]
	public partial class Image : PublishedContentModel
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "Image";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Media;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Image, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public Image(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Size: in bytes
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoBytes")]
		public long UmbracoBytes => this.Value<long>("umbracoBytes");

		///<summary>
		/// Type
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoExtension")]
		public string UmbracoExtension => this.Value<string>("umbracoExtension");

		///<summary>
		/// Upload image
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoFile")]
		public Umbraco.Core.PropertyEditors.ValueConverters.ImageCropperValue UmbracoFile => this.Value<Umbraco.Core.PropertyEditors.ValueConverters.ImageCropperValue>("umbracoFile");

		///<summary>
		/// Height: in pixels
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoHeight")]
		public int UmbracoHeight => this.Value<int>("umbracoHeight");

		///<summary>
		/// Width: in pixels
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoWidth")]
		public int UmbracoWidth => this.Value<int>("umbracoWidth");
	}

	/// <summary>File</summary>
	[PublishedModel("File")]
	public partial class File : PublishedContentModel
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "File";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Media;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<File, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public File(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Size: in bytes
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoBytes")]
		public long UmbracoBytes => this.Value<long>("umbracoBytes");

		///<summary>
		/// Type
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoExtension")]
		public string UmbracoExtension => this.Value<string>("umbracoExtension");

		///<summary>
		/// Upload file
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoFile")]
		public string UmbracoFile => this.Value<string>("umbracoFile");
	}

	/// <summary>Member</summary>
	[PublishedModel("Member")]
	public partial class Member : PublishedContentModel
	{
		// helpers
#pragma warning disable 0109 // new is redundant
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const string ModelTypeAlias = "Member";
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new const PublishedItemType ModelItemType = PublishedItemType.Member;
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public new static IPublishedContentType GetModelContentType()
			=> PublishedModelUtility.GetModelContentType(ModelItemType, ModelTypeAlias);
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		public static IPublishedPropertyType GetModelPropertyType<TValue>(Expression<Func<Member, TValue>> selector)
			=> PublishedModelUtility.GetModelPropertyType(GetModelContentType(), selector);
#pragma warning restore 0109

		// ctor
		public Member(IPublishedContent content)
			: base(content)
		{ }

		// properties

		///<summary>
		/// Is Approved
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberApproved")]
		public bool UmbracoMemberApproved => this.Value<bool>("umbracoMemberApproved");

		///<summary>
		/// Comments
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberComments")]
		public string UmbracoMemberComments => this.Value<string>("umbracoMemberComments");

		///<summary>
		/// Failed Password Attempts
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberFailedPasswordAttempts")]
		public int UmbracoMemberFailedPasswordAttempts => this.Value<int>("umbracoMemberFailedPasswordAttempts");

		///<summary>
		/// Last Lockout Date
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberLastLockoutDate")]
		public DateTime UmbracoMemberLastLockoutDate => this.Value<DateTime>("umbracoMemberLastLockoutDate");

		///<summary>
		/// Last Login Date
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberLastLogin")]
		public DateTime UmbracoMemberLastLogin => this.Value<DateTime>("umbracoMemberLastLogin");

		///<summary>
		/// Last Password Change Date
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberLastPasswordChangeDate")]
		public DateTime UmbracoMemberLastPasswordChangeDate => this.Value<DateTime>("umbracoMemberLastPasswordChangeDate");

		///<summary>
		/// Is Locked Out
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberLockedOut")]
		public bool UmbracoMemberLockedOut => this.Value<bool>("umbracoMemberLockedOut");

		///<summary>
		/// Password Answer
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberPasswordRetrievalAnswer")]
		public DateTime UmbracoMemberPasswordRetrievalAnswer => this.Value<DateTime>("umbracoMemberPasswordRetrievalAnswer");

		///<summary>
		/// Password Question
		///</summary>
		[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Umbraco.ModelsBuilder", "8.1.0")]
		[ImplementPropertyType("umbracoMemberPasswordRetrievalQuestion")]
		public DateTime UmbracoMemberPasswordRetrievalQuestion => this.Value<DateTime>("umbracoMemberPasswordRetrievalQuestion");
	}

}
