; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_mpegsplit.c_test_query_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_mpegsplit.c_test_query_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IAMStreamSelect = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_interface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = call i32* (...) @create_mpeg_splitter()
  store i32* %4, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = bitcast i32** %2 to i8**
  %7 = call i64 @IUnknown_QueryInterface(i32* %5, i32* @IID_IAMStreamSelect, i8** %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* @S_OK, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @IAMStreamSelect_Release(i32* %18)
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @IUnknown_Release(i32* %21)
  ret void
}

declare dso_local i32* @create_mpeg_splitter(...) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IAMStreamSelect_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
