; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_efi_32.c_efi_call_phys_epilog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_efi_32.c_efi_call_phys_epilog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.desc_ptr = type { i64, i64 }

@GDT_SIZE = common dso_local global i64 0, align 8
@X86_CR4_PAE = common dso_local global i64 0, align 8
@efi_bak_pg_dir_pointer = common dso_local global %struct.TYPE_4__* null, align 8
@swapper_pg_dir = common dso_local global %struct.TYPE_3__* null, align 8
@efi_rt_eflags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efi_call_phys_epilog() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.desc_ptr, align 8
  %3 = call i64 @get_cpu_gdt_table(i32 0)
  %4 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %2, i32 0, i32 0
  store i64 %3, i64* %4, align 8
  %5 = load i64, i64* @GDT_SIZE, align 8
  %6 = sub nsw i64 %5, 1
  %7 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %2, i32 0, i32 1
  store i64 %6, i64* %7, align 8
  %8 = call i32 @load_gdt(%struct.desc_ptr* %2)
  %9 = call i64 (...) @read_cr4_safe()
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @X86_CR4_PAE, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @efi_bak_pg_dir_pointer, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %20 = call i64 @pgd_index(i32 0)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  br label %40

23:                                               ; preds = %0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @efi_bak_pg_dir_pointer, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %29 = call i64 @pgd_index(i32 0)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @efi_bak_pg_dir_pointer, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @swapper_pg_dir, align 8
  %37 = call i64 @pgd_index(i32 4194304)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %23, %14
  %41 = call i32 (...) @__flush_tlb_all()
  %42 = load i32, i32* @efi_rt_eflags, align 4
  %43 = call i32 @local_irq_restore(i32 %42)
  ret void
}

declare dso_local i64 @get_cpu_gdt_table(i32) #1

declare dso_local i32 @load_gdt(%struct.desc_ptr*) #1

declare dso_local i64 @read_cr4_safe(...) #1

declare dso_local i64 @pgd_index(i32) #1

declare dso_local i32 @__flush_tlb_all(...) #1

declare dso_local i32 @local_irq_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
