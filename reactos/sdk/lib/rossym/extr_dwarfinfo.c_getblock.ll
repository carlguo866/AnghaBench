; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_getblock.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_dwarfinfo.c_getblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@nil = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @getblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getblock(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %10 [
    i32 131, label %11
    i32 130, label %14
    i32 129, label %17
    i32 128, label %20
  ]

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %39

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @dwarfget128(i32* %12)
  store i32 %13, i32* %8, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @dwarfget1(i32* %15)
  store i32 %16, i32* %8, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @dwarfget2(i32* %18)
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @dwarfget4(i32* %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %17, %14, %11
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dwarfgetnref(i32* %24, i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @nil, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %39

38:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37, %10
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @dwarfget128(i32*) #1

declare dso_local i32 @dwarfget1(i32*) #1

declare dso_local i32 @dwarfget2(i32*) #1

declare dso_local i32 @dwarfget4(i32*) #1

declare dso_local i32 @dwarfgetnref(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
