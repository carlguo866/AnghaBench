; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_op_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_atom_op_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"   src1: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"   src2: \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"   result: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EQ\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @atom_op_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_op_test(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = call i32 @U8(i32 %11)
  store i32 %13, i32* %7, align 4
  %14 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @atom_get_dst(%struct.TYPE_7__* %15, i32 %16, i32 %17, i32* %18, i32* null, i32 1)
  store i32 %19, i32* %8, align 4
  %20 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @atom_get_src(%struct.TYPE_7__* %21, i32 %22, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  ret void
}

declare dso_local i32 @U8(i32) #1

declare dso_local i32 @SDEBUG(i8*, ...) #1

declare dso_local i32 @atom_get_dst(%struct.TYPE_7__*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @atom_get_src(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
