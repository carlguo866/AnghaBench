; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_set_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_set_int(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %8, align 16
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @snprintf(i8* %9, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %15 = call i32 @config_set_string(i32* %12, i8* %13, i8* %14)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @config_set_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
