; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_copy_irq_alloc_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_vector.c_copy_irq_alloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_alloc_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_irq_alloc_info(%struct.irq_alloc_info* %0, %struct.irq_alloc_info* %1) #0 {
  %3 = alloca %struct.irq_alloc_info*, align 8
  %4 = alloca %struct.irq_alloc_info*, align 8
  store %struct.irq_alloc_info* %0, %struct.irq_alloc_info** %3, align 8
  store %struct.irq_alloc_info* %1, %struct.irq_alloc_info** %4, align 8
  %5 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %6 = icmp ne %struct.irq_alloc_info* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %9 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %4, align 8
  %10 = bitcast %struct.irq_alloc_info* %8 to i8*
  %11 = bitcast %struct.irq_alloc_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %3, align 8
  %14 = call i32 @memset(%struct.irq_alloc_info* %13, i32 0, i32 4)
  br label %15

15:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.irq_alloc_info*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
