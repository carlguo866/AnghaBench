; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_noscript.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_noscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_noscript.all_types = internal constant [6 x i32] [i32 130, i32 131, i32 128, i32 129, i32 133, i32 129], align 16
@test_noscript.body_all_types = internal constant [2 x i32] [i32 132, i32 129], align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"get_all failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"<div>test</div><noscript><a href=\22about:blank\22>A</a></noscript>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_noscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_noscript(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @IHTMLDocument2_get_all(i32* %6, i32** %3)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @test_elem_collection(i32* %14, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @test_noscript.all_types, i64 0, i64 0), i32 6)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @IHTMLElementCollection_Release(i32* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @doc_get_body(i32* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @test_elem_set_innerhtml(i32* %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @test_elem_all(i32* %22, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @test_noscript.body_all_types, i64 0, i64 0), i32 2)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @IHTMLElement_Release(i32* %24)
  ret void
}

declare dso_local i64 @IHTMLDocument2_get_all(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_elem_collection(i32*, i32*, i32) #1

declare dso_local i32 @IHTMLElementCollection_Release(i32*) #1

declare dso_local i32* @doc_get_body(i32*) #1

declare dso_local i32 @test_elem_set_innerhtml(i32*, i8*) #1

declare dso_local i32 @test_elem_all(i32*, i32*, i32) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
