; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_imagelist.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_imagelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TB_GETIMAGELIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@TB_SETBITMAPSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_imagelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_imagelist() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %4 = call i32 @rebuild_toolbar(i32** %2)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @TB_GETIMAGELIST, align 4
  %7 = call i32 @SendMessageA(i32* %5, i32 %6, i32 0, i32 0)
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = load i32*, i32** %1, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @TB_SETBITMAPSIZE, align 4
  %18 = call i32 @MAKELONG(i32 16, i32 16)
  %19 = call i32 @SendMessageA(i32* %16, i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @TB_GETIMAGELIST, align 4
  %25 = call i32 @SendMessageA(i32* %23, i32 %24, i32 0, i32 0)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %1, align 8
  %28 = load i32*, i32** %1, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %1, align 8
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @DestroyWindow(i32* %34)
  ret void
}

declare dso_local i32 @rebuild_toolbar(i32**) #1

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
