; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_rtl_init_str.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_rtl_init_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtl_init_str.initialized = internal global i32 0, align 4
@rtl_init_str.func = internal global i32 (i32*, i32*)* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"RtlInitUnicodeString\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @rtl_init_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_init_str(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @rtl_init_str.initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = call i64 @get_nt_func(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = inttoptr i64 %8 to i32 (i32*, i32*)*
  store i32 (i32*, i32*)* %9, i32 (i32*, i32*)** @rtl_init_str.func, align 8
  store i32 1, i32* @rtl_init_str.initialized, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** @rtl_init_str.func, align 8
  %12 = icmp ne i32 (i32*, i32*)* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** @rtl_init_str.func, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 %14(i32* %15, i32* %16)
  br label %18

18:                                               ; preds = %13, %10
  ret void
}

declare dso_local i64 @get_nt_func(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
