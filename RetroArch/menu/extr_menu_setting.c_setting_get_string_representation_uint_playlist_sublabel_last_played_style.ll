; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_playlist_sublabel_last_played_style.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_playlist_sublabel_last_played_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HMS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MDYYYY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_DM_HM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MD_HM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HMS_AM_PM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HM_AM_PM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MDYYYY_AM_PM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_DM_HM_AM_PM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MD_HM_AM_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i64)* @setting_get_string_representation_uint_playlist_sublabel_last_played_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_get_string_representation_uint_playlist_sublabel_last_played_style(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %77

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %77 [
    i32 130, label %17
    i32 131, label %23
    i32 135, label %29
    i32 137, label %35
    i32 133, label %41
    i32 129, label %47
    i32 128, label %53
    i32 134, label %59
    i32 136, label %65
    i32 132, label %71
  ]

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HMS, align 4
  %20 = call i32 @msg_hash_to_str(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @strlcpy(i8* %18, i32 %20, i64 %21)
  br label %77

23:                                               ; preds = %10
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HM, align 4
  %26 = call i32 @msg_hash_to_str(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @strlcpy(i8* %24, i32 %26, i64 %27)
  br label %77

29:                                               ; preds = %10
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MDYYYY, align 4
  %32 = call i32 @msg_hash_to_str(i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @strlcpy(i8* %30, i32 %32, i64 %33)
  br label %77

35:                                               ; preds = %10
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_DM_HM, align 4
  %38 = call i32 @msg_hash_to_str(i32 %37)
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @strlcpy(i8* %36, i32 %38, i64 %39)
  br label %77

41:                                               ; preds = %10
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MD_HM, align 4
  %44 = call i32 @msg_hash_to_str(i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @strlcpy(i8* %42, i32 %44, i64 %45)
  br label %77

47:                                               ; preds = %10
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HMS_AM_PM, align 4
  %50 = call i32 @msg_hash_to_str(i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @strlcpy(i8* %48, i32 %50, i64 %51)
  br label %77

53:                                               ; preds = %10
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_YMD_HM_AM_PM, align 4
  %56 = call i32 @msg_hash_to_str(i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @strlcpy(i8* %54, i32 %56, i64 %57)
  br label %77

59:                                               ; preds = %10
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MDYYYY_AM_PM, align 4
  %62 = call i32 @msg_hash_to_str(i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @strlcpy(i8* %60, i32 %62, i64 %63)
  br label %77

65:                                               ; preds = %10
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_DM_HM_AM_PM, align 4
  %68 = call i32 @msg_hash_to_str(i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @strlcpy(i8* %66, i32 %68, i64 %69)
  br label %77

71:                                               ; preds = %10
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_LAST_PLAYED_STYLE_MD_HM_AM_PM, align 4
  %74 = call i32 @msg_hash_to_str(i32 %73)
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @strlcpy(i8* %72, i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %9, %10, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17
  ret void
}

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
