; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_sampler_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_sampler_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_sampler = type { %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_sampler*)* @shader_sampler_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sampler_free(%struct.shader_sampler* %0) #0 {
  %2 = alloca %struct.shader_sampler*, align 8
  %3 = alloca i64, align 8
  store %struct.shader_sampler* %0, %struct.shader_sampler** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.shader_sampler*, %struct.shader_sampler** %2, align 8
  %7 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = load %struct.shader_sampler*, %struct.shader_sampler** %2, align 8
  %13 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfree(i32 %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %4

23:                                               ; preds = %4
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.shader_sampler*, %struct.shader_sampler** %2, align 8
  %27 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.shader_sampler*, %struct.shader_sampler** %2, align 8
  %33 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bfree(i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %24

43:                                               ; preds = %24
  %44 = load %struct.shader_sampler*, %struct.shader_sampler** %2, align 8
  %45 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bfree(i32 %46)
  %48 = load %struct.shader_sampler*, %struct.shader_sampler** %2, align 8
  %49 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %48, i32 0, i32 1
  %50 = bitcast %struct.TYPE_2__* %49 to { i64, i32* }*
  %51 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %50, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @da_free(i64 %52, i32* %54)
  %56 = load %struct.shader_sampler*, %struct.shader_sampler** %2, align 8
  %57 = getelementptr inbounds %struct.shader_sampler, %struct.shader_sampler* %56, i32 0, i32 0
  %58 = bitcast %struct.TYPE_2__* %57 to { i64, i32* }*
  %59 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %58, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @da_free(i64 %60, i32* %62)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
