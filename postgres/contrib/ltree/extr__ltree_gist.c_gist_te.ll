; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr__ltree_gist.c_gist_te.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr__ltree_gist.c_gist_te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @gist_te to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gist_te(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = call %struct.TYPE_8__* @LTREE_FIRST(%struct.TYPE_9__* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @LTG_SIGN(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @LTG_ISALLTRUE(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ltree_crc32_sz(i32 %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @AHASHVAL(i32 %34)
  %36 = call i32 @GETBIT(i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %45

39:                                               ; preds = %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = call %struct.TYPE_8__* @LEVEL_NEXT(%struct.TYPE_8__* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %22

44:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %38, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_8__* @LTREE_FIRST(%struct.TYPE_9__*) #1

declare dso_local i32 @LTG_SIGN(i32*) #1

declare dso_local i64 @LTG_ISALLTRUE(i32*) #1

declare dso_local i32 @ltree_crc32_sz(i32, i32) #1

declare dso_local i32 @GETBIT(i32, i32) #1

declare dso_local i32 @AHASHVAL(i32) #1

declare dso_local %struct.TYPE_8__* @LEVEL_NEXT(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
