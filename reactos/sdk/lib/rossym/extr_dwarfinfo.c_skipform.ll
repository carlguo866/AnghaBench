; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_skipform.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_skipform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @skipform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipform(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %11 = call i64 @getulong(i32* %8, i32 %9, i32 0, i32* %10, i32* %6)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = bitcast %struct.TYPE_2__* %7 to i32*
  %17 = call i64 @getuchar(i32* %14, i32 %15, i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %23 = call i64 @getstring(i32* %20, i32 %21, i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %29 = call i64 @getblock(i32* %26, i32 %27, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %33

32:                                               ; preds = %25, %19, %13, %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @getulong(i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @getuchar(i32*, i32, i32*) #1

declare dso_local i64 @getstring(i32*, i32, i32*) #1

declare dso_local i64 @getblock(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
