; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_version_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_presets_version_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_presets_version_file(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @hb_value_read_json(i8* %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @hb_plist_parse_file(i8* %17)
  store i32* %18, i32** %11, align 8
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %31

23:                                               ; preds = %19
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @hb_presets_version(i32* %24, i32* %25, i32* %26, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = call i32 @hb_value_free(i32** %11)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32* @hb_value_read_json(i8*) #1

declare dso_local i32* @hb_plist_parse_file(i8*) #1

declare dso_local i32 @hb_presets_version(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
