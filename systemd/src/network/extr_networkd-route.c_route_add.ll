; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-route.c_route_add.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-route.c_route_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@route_hash_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_add(%struct.TYPE_5__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @route_get(%struct.TYPE_5__* %10, i32* %11, i32** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @route_add_internal(%struct.TYPE_5__* %18, i32* %20, i32* %21, i32** %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %70

27:                                               ; preds = %17
  br label %63

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @set_ensure_allocated(i32* %33, i32* @route_hash_ops)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @set_put(i32 %42, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %70

49:                                               ; preds = %39
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @set_remove(i32 %52, i32* %53)
  br label %62

55:                                               ; preds = %28
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %70

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32**, i32*** %7, align 8
  %65 = icmp ne i32** %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %59, %47, %37, %25
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @route_get(%struct.TYPE_5__*, i32*, i32**) #1

declare dso_local i32 @route_add_internal(%struct.TYPE_5__*, i32*, i32*, i32**) #1

declare dso_local i32 @set_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @set_put(i32, i32*) #1

declare dso_local i32 @set_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
