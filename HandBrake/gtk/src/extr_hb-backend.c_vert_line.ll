; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_vert_line.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_vert_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32)* @vert_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vert_line(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @gdk_pixbuf_get_pixels(i32* %23)
  store i32* %24, i32** %17, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @gdk_pixbuf_get_n_channels(i32* %25)
  store i32 %26, i32* %21, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @gdk_pixbuf_get_rowstride(i32* %27)
  store i32 %28, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %69, %8
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %29
  %34 = load i32*, i32** %17, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %22, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %20, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %21, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  store i32* %46, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %47

47:                                               ; preds = %65, %33
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %22, align 4
  %62 = load i32*, i32** %18, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %18, align 8
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %19, align 4
  br label %47

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %29

72:                                               ; preds = %29
  ret void
}

declare dso_local i32* @gdk_pixbuf_get_pixels(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_n_channels(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_rowstride(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
