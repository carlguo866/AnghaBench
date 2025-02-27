; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_update_elfcore_header.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_update_elfcore_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.elfhdr = type { i32 }
%struct.elf_phdr = type { i64, i32, i32, i32, i32 }

@PT_NOTE = common dso_local global i64 0, align 8
@fw_dump = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fadump_update_elfcore_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.elfhdr*, align 8
  %4 = alloca %struct.elf_phdr*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.elfhdr*
  store %struct.elfhdr* %6, %struct.elfhdr** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 4
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.elf_phdr*
  store %struct.elf_phdr* %10, %struct.elf_phdr** %4, align 8
  %11 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %12 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PT_NOTE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 1), align 4
  %18 = call i32 @__pa(i32 %17)
  %19 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %20 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %22 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %25 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 0), align 4
  %27 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %28 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 0), align 4
  %30 = load %struct.elf_phdr*, %struct.elf_phdr** %4, align 8
  %31 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
