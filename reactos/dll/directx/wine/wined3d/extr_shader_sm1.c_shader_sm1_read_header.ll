; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_version = type { i32 }
%struct.wined3d_sm1_data = type { %struct.wined3d_shader_version, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32**, %struct.wined3d_shader_version*)* @shader_sm1_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm1_read_header(i8* %0, i32** %1, %struct.wined3d_shader_version* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.wined3d_shader_version*, align 8
  %7 = alloca %struct.wined3d_sm1_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.wined3d_shader_version* %2, %struct.wined3d_shader_version** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wined3d_sm1_data*
  store %struct.wined3d_sm1_data* %9, %struct.wined3d_sm1_data** %7, align 8
  %10 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %7, align 8
  %11 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32**, i32*** %5, align 8
  store i32* %12, i32** %13, align 8
  %14 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %15 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %15, i32 0, i32 0
  %17 = bitcast %struct.wined3d_shader_version* %14 to i8*
  %18 = bitcast %struct.wined3d_shader_version* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %18, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
