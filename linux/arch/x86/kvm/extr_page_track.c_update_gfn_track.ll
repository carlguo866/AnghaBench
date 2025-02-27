; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_page_track.c_update_gfn_track.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_page_track.c_update_gfn_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32** }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_memory_slot*, i32, i32, i16)* @update_gfn_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gfn_track(%struct.kvm_memory_slot* %0, i32 %1, i32 %2, i16 signext %3) #0 {
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %16 = call i32 @gfn_to_index(i32 %11, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i16, i16* %8, align 2
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %29, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i16, i16* %8, align 2
  %37 = sext i16 %36 to i32
  %38 = add nsw i32 %35, %37
  %39 = load i32, i32* @USHRT_MAX, align 4
  %40 = icmp sgt i32 %38, %39
  br label %41

41:                                               ; preds = %34, %4
  %42 = phi i1 [ true, %4 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %63

47:                                               ; preds = %41
  %48 = load i16, i16* %8, align 2
  %49 = sext i16 %48 to i32
  %50 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %49
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @gfn_to_index(i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
