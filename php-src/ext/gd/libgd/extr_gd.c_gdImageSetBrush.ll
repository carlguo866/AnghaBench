; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageSetBrush.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageSetBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageSetBrush(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %9, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %53, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i32 @gdImageColorsTotal(%struct.TYPE_10__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @gdImageRed(%struct.TYPE_10__* %29, i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @gdImageGreen(%struct.TYPE_10__* %32, i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @gdImageBlue(%struct.TYPE_10__* %35, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @gdImageAlpha(%struct.TYPE_10__* %38, i32 %39)
  %41 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_10__* %28, i32 %31, i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %22

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52, %14, %2
  ret void
}

declare dso_local i32 @gdImageColorsTotal(%struct.TYPE_10__*) #1

declare dso_local i32 @gdImageColorResolveAlpha(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageRed(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gdImageGreen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gdImageBlue(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gdImageAlpha(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
