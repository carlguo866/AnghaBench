; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_loclist.c_dwarf_loclist_from_expr_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_loclist.c_dwarf_loclist_from_expr_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_loclist_from_expr_b(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32** %6, i32*** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %9
  %25 = load i32*, i32** %12, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32**, i32*** %17, align 8
  %32 = icmp eq i32** %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %18, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33, %30, %27, %24, %9
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %40 = call i32 @DWARF_SET_ERROR(i32* %37, i32* %38, i32 %39)
  %41 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %41, i32* %10, align 4
  br label %85

42:                                               ; preds = %33
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 4
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 8
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %52 = call i32 @DWARF_SET_ERROR(i32* %49, i32* %50, i32 %51)
  %53 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %53, i32* %10, align 4
  br label %85

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 4
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 8
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %64 = call i32 @DWARF_SET_ERROR(i32* %61, i32* %62, i32 %63)
  %65 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %65, i32* %10, align 4
  br label %85

66:                                               ; preds = %57, %54
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = call i32 @_dwarf_loc_fill_locexpr(i32* %67, i32** %20, i32* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32* %73)
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* @DW_DLE_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %79, i32* %10, align 4
  br label %85

80:                                               ; preds = %66
  %81 = load i32*, i32** %20, align 8
  %82 = load i32**, i32*** %17, align 8
  store i32* %81, i32** %82, align 8
  %83 = load i32*, i32** %18, align 8
  store i32 1, i32* %83, align 4
  %84 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %80, %78, %60, %48, %36
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local i32 @_dwarf_loc_fill_locexpr(i32*, i32**, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
