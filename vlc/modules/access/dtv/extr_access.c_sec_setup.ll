; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_sec_setup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_sec_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"dvb-lnb-low\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dvb-lnb-high\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"dvb-lnb-switch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @sec_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_setup(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call signext i8 @var_InheritPolarization(i32* %11)
  store i8 %12, i8* %7, align 1
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @var_InheritInteger(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @var_InheritInteger(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @var_InheritInteger(i32* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8, i8* %7, align 1
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @dvb_set_sec(i32* %19, i32 %20, i8 signext %21, i32 %22, i32 %23, i32 %24)
  ret void
}

declare dso_local signext i8 @var_InheritPolarization(i32*) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @dvb_set_sec(i32*, i32, i8 signext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
