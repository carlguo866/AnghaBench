; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-address.c_address_add.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-address.c_address_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%union.in_addr_union = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@address_hash_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @address_add(%struct.TYPE_5__* %0, i32 %1, %union.in_addr_union* %2, i8 zeroext %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.in_addr_union*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %union.in_addr_union* %2, %union.in_addr_union** %9, align 8
  store i8 %3, i8* %10, align 1
  store i32** %4, i32*** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %union.in_addr_union*, %union.in_addr_union** %9, align 8
  %17 = load i8, i8* %10, align 1
  %18 = call i32 @address_get(%struct.TYPE_5__* %14, i32 %15, %union.in_addr_union* %16, i8 zeroext %17, i32** %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %8, align 4
  %28 = load %union.in_addr_union*, %union.in_addr_union** %9, align 8
  %29 = load i8, i8* %10, align 1
  %30 = call i32 @address_add_internal(%struct.TYPE_5__* %24, i32* %26, i32 %27, %union.in_addr_union* %28, i8 zeroext %29, i32** %12)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %78

35:                                               ; preds = %23
  br label %71

36:                                               ; preds = %5
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i32 @set_ensure_allocated(i32* %41, i32* @address_hash_ops)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %78

47:                                               ; preds = %39
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @set_put(i32 %50, i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %78

57:                                               ; preds = %47
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @set_remove(i32 %60, i32* %61)
  br label %70

63:                                               ; preds = %36
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %78

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %57
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32**, i32*** %11, align 8
  %73 = icmp ne i32** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %12, align 8
  %76 = load i32**, i32*** %11, align 8
  store i32* %75, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %67, %55, %45, %33
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @address_get(%struct.TYPE_5__*, i32, %union.in_addr_union*, i8 zeroext, i32**) #1

declare dso_local i32 @address_add_internal(%struct.TYPE_5__*, i32*, i32, %union.in_addr_union*, i8 zeroext, i32**) #1

declare dso_local i32 @set_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @set_put(i32, i32*) #1

declare dso_local i32 @set_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
