; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_set_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_pgd_set_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.mm_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.mm_struct*)* @pgd_set_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgd_set_mm(i32* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_2__* @virt_to_page(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mm_struct* %5, %struct.mm_struct** %8, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @virt_to_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
