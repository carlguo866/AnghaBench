; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi-icon-fetcher.c_rofi_icon_fetcher_init.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi-icon-fetcher.c_rofi_icon_fetcher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@rofi_icon_fetcher_data = common dso_local global %struct.TYPE_4__* null, align 8
@rofi_icon_fetcher_init.icon_fallback_themes = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"Adwaita\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"gnome\00", align 1
@config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_direct_hash = common dso_local global i32 0, align 4
@g_direct_equal = common dso_local global i32 0, align 4
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@rofi_icon_fetch_entry_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_icon_fetcher_init() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rofi_icon_fetcher_data, align 8
  %3 = icmp eq %struct.TYPE_4__* %2, null
  %4 = zext i1 %3 to i32
  %5 = call i32 @g_assert(i32 %4)
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 1
  store i8* null, i8** %8, align 8
  %9 = call %struct.TYPE_4__* @g_malloc0(i32 4)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** @rofi_icon_fetcher_data, align 8
  %10 = call i32 @nk_xdg_theme_context_new(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @rofi_icon_fetcher_init.icon_fallback_themes, i64 0, i64 0), i32* null)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rofi_icon_fetcher_data, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rofi_icon_fetcher_data, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %17 = call i32 @nk_xdg_theme_preload_themes_icon(i32 %15, i8** %16)
  %18 = load i32, i32* @g_direct_hash, align 4
  %19 = load i32, i32* @g_direct_equal, align 4
  %20 = call i32 @g_hash_table_new(i32 %18, i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rofi_icon_fetcher_data, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @g_str_hash, align 4
  %24 = load i32, i32* @g_str_equal, align 4
  %25 = load i32, i32* @rofi_icon_fetch_entry_free, align 4
  %26 = call i32 @g_hash_table_new_full(i32 %23, i32 %24, i32* null, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rofi_icon_fetcher_data, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @g_assert(i32) #1

declare dso_local %struct.TYPE_4__* @g_malloc0(i32) #1

declare dso_local i32 @nk_xdg_theme_context_new(i8**, i32*) #1

declare dso_local i32 @nk_xdg_theme_preload_themes_icon(i32, i8**) #1

declare dso_local i32 @g_hash_table_new(i32, i32) #1

declare dso_local i32 @g_hash_table_new_full(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
