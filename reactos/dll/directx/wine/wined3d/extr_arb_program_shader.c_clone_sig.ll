; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_clone_sig.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_clone_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_signature = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_signature*, %struct.wined3d_shader_signature*)* @clone_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_sig(%struct.wined3d_shader_signature* %0, %struct.wined3d_shader_signature* %1) #0 {
  %3 = alloca %struct.wined3d_shader_signature*, align 8
  %4 = alloca %struct.wined3d_shader_signature*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.wined3d_shader_signature* %0, %struct.wined3d_shader_signature** %3, align 8
  store %struct.wined3d_shader_signature* %1, %struct.wined3d_shader_signature** %4, align 8
  %7 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %3, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_2__* @heap_calloc(i32 %14, i32 8)
  %16 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %16, i32 0, i32 1
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %79, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %82

24:                                               ; preds = %18
  %25 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %3, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = bitcast %struct.TYPE_2__* %30 to i8*
  %38 = bitcast %struct.TYPE_2__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %24
  br label %79

49:                                               ; preds = %24
  %50 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %58, 1
  %60 = call i8* @heap_alloc(i64 %59)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcpy(i8* %61, i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %3, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i8* %71, i8** %78, align 8
  br label %79

79:                                               ; preds = %49, %48
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %18

82:                                               ; preds = %18
  ret void
}

declare dso_local %struct.TYPE_2__* @heap_calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @heap_alloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
