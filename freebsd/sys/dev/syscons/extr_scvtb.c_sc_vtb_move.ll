; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvtb.c_sc_vtb_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@VTB_FRAMEBUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_vtb_move(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %9, %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %16, %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %72

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VTB_FRAMEBUFFER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %47, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @bcopy_io(i64 %49, i64 %52, i32 %56)
  br label %72

58:                                               ; preds = %40
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %59, i32 %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @sc_vtb_pointer(%struct.TYPE_4__* %63, i32 %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @bcopy(i8* %62, i8* %66, i32 %70)
  br label %72

72:                                               ; preds = %39, %58, %46
  ret void
}

declare dso_local i32 @bcopy_io(i64, i64, i32) #1

declare dso_local i64 @sc_vtb_pointer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
