; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_try_load.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_ladspa.c_try_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s/%s.so\00", align 1
@RTLD_LOCAL = common dso_local global i32 0, align 4
@RTLD_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @try_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @try_load(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @av_asprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8)
  store i8* %9, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @RTLD_LOCAL, align 4
  %15 = load i32, i32* @RTLD_NOW, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @dlopen(i8* %13, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @av_free(i8* %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i8*, i8** %6, align 8
  ret i8* %21
}

declare dso_local i8* @av_asprintf(i8*, i8*, i8*) #1

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
