; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_parse_cmd_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_parse_cmd_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atom_parse_cmd_header(%struct.atom_context* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atom_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.atom_context* %0, %struct.atom_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %14, 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %17 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @CU16(i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %24 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %27 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = add nsw i64 %29, 4
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %56

39:                                               ; preds = %4
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 2
  %45 = call i32 @CU8(i32 %44)
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 3
  %53 = call i32 @CU8(i32 %52)
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %47
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @CU16(i64) #1

declare dso_local i32 @CU8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
