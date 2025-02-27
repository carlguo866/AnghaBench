; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_tlb.c_local_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_tlb.c_local_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8** }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@NO_CONTEXT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %10 = icmp eq %struct.mm_struct* %6, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i8*, i8** @NO_CONTEXT, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %14, i8** %21, align 8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @activate_context(%struct.mm_struct* %22, i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  br label %39

27:                                               ; preds = %1
  %28 = load i8*, i8** @NO_CONTEXT, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* %28, i8** %35, align 8
  %36 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  br label %39

39:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @activate_context(%struct.mm_struct*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
