; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawColumn.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dc_yh = common dso_local global i64 0, align 8
@dc_yl = common dso_local global i64 0, align 8
@ylookup = common dso_local global i32** null, align 8
@columnofs = common dso_local global i32* null, align 8
@dc_x = common dso_local global i64 0, align 8
@dc_iscale = common dso_local global i64 0, align 8
@dc_texturemid = common dso_local global i64 0, align 8
@centery = common dso_local global i64 0, align 8
@dc_colormap = common dso_local global i32* null, align 8
@dc_source = common dso_local global i64* null, align 8
@FRACBITS = common dso_local global i64 0, align 8
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawColumn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @dc_yh, align 8
  %6 = load i64, i64* @dc_yl, align 8
  %7 = sub i64 %5, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %54

12:                                               ; preds = %0
  %13 = load i32**, i32*** @ylookup, align 8
  %14 = load i64, i64* @dc_yl, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** @columnofs, align 8
  %18 = load i64, i64* @dc_x, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32* %22, i32** %2, align 8
  %23 = load i64, i64* @dc_iscale, align 8
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* @dc_texturemid, align 8
  %25 = load i64, i64* @dc_yl, align 8
  %26 = load i64, i64* @centery, align 8
  %27 = sub i64 %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = mul i64 %27, %28
  %30 = add i64 %24, %29
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %50, %12
  %32 = load i32*, i32** @dc_colormap, align 8
  %33 = load i64*, i64** @dc_source, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @FRACBITS, align 8
  %36 = lshr i64 %34, %35
  %37 = and i64 %36, 127
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %2, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @SCREENWIDTH, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %2, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %1, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %31, label %54

54:                                               ; preds = %11, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
