; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c__vm_map_clip_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c__vm_map_clip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"_vm_map_clip_start: invalid clip of entry %p\00", align 1
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i64)* @_vm_map_clip_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vm_map_clip_start(i32 %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @VM_MAP_ASSERT_LOCKED(i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %18, %19
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = bitcast %struct.TYPE_9__* %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i32 @vm_map_entry_charge_object(i32 %27, %struct.TYPE_9__* %28)
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.TYPE_9__* @vm_map_entry_create(i32 %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = bitcast %struct.TYPE_9__* %32 to i8*
  %35 = bitcast %struct.TYPE_9__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 40, i1 false)
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %21
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @crhold(i32* %60)
  br label %62

62:                                               ; preds = %57, %21
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = call i32 @vm_map_entry_link(i32 %63, %struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @vm_object_reference(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = call i32 @vm_map_entry_set_vnode_text(%struct.TYPE_9__* %78, i32 1)
  br label %80

80:                                               ; preds = %72, %62
  ret void
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_map_entry_charge_object(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @vm_map_entry_create(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @vm_map_entry_link(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @vm_map_entry_set_vnode_text(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
