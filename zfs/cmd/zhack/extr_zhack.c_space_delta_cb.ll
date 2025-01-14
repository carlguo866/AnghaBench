; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_space_delta_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zhack/extr_zhack.c_space_delta_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMU_OT_ZNODE = common dso_local global i64 0, align 8
@DMU_OT_SA = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"modifying object that needs user accounting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32*, i32*, i32*)* @space_delta_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @space_delta_cb(i64 %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @DMU_OT_ZNODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @DMU_OT_SA, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOENT, align 4
  ret i32 %19

20:                                               ; preds = %14, %5
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
