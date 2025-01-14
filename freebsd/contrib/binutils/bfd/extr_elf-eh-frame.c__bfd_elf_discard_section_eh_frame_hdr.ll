; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c__bfd_elf_discard_section_eh_frame_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c__bfd_elf_discard_section_eh_frame_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_link_hash_table = type { %struct.eh_frame_hdr_info }
%struct.eh_frame_hdr_info = type { i32, i64, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@FALSE = common dso_local global i32 0, align 4
@EH_FRAME_HDR_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_discard_section_eh_frame_hdr(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf_link_hash_table*, align 8
  %7 = alloca %struct.eh_frame_hdr_info*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %9 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %10 = call %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info* %9)
  store %struct.elf_link_hash_table* %10, %struct.elf_link_hash_table** %6, align 8
  %11 = load %struct.elf_link_hash_table*, %struct.elf_link_hash_table** %6, align 8
  %12 = getelementptr inbounds %struct.elf_link_hash_table, %struct.elf_link_hash_table* %11, i32 0, i32 0
  store %struct.eh_frame_hdr_info* %12, %struct.eh_frame_hdr_info** %7, align 8
  %13 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %14 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %19 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @htab_delete(i32* %20)
  %22 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %23 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %26 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %8, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %24
  %33 = load i32, i32* @EH_FRAME_HDR_SIZE, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %37 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.eh_frame_hdr_info*, %struct.eh_frame_hdr_info** %7, align 8
  %42 = getelementptr inbounds %struct.eh_frame_hdr_info, %struct.eh_frame_hdr_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, 8
  %45 = add nsw i32 4, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %40, %32
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call %struct.TYPE_4__* @elf_tdata(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %54, align 8
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.elf_link_hash_table* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @htab_delete(i32*) #1

declare dso_local %struct.TYPE_4__* @elf_tdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
