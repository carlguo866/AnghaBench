; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_count_section_dynsyms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_count_section_dynsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }
%struct.bfd_link_info = type { i64 }
%struct.elf_backend_data = type { i32 (%struct.TYPE_8__*, %struct.bfd_link_info.0*, %struct.TYPE_9__*)* }
%struct.bfd_link_info.0 = type opaque
%struct.TYPE_10__ = type { i64 }

@SEC_EXCLUDE = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.bfd_link_info*)* @count_section_dynsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @count_section_dynsyms(%struct.TYPE_8__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.elf_backend_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %9 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %14 = call %struct.TYPE_10__* @elf_hash_table(%struct.bfd_link_info* %13)
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %12, %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_8__* %19)
  store %struct.elf_backend_data* %20, %struct.elf_backend_data** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %6, align 8
  br label %24

24:                                               ; preds = %55, %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SEC_EXCLUDE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SEC_ALLOC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load %struct.elf_backend_data*, %struct.elf_backend_data** %7, align 8
  %43 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_8__*, %struct.bfd_link_info.0*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.bfd_link_info.0*, %struct.TYPE_9__*)** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %47 = bitcast %struct.bfd_link_info* %46 to %struct.bfd_link_info.0*
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = call i32 %44(%struct.TYPE_8__* %45, %struct.bfd_link_info.0* %47, %struct.TYPE_9__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %51, %41, %34, %27
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %6, align 8
  br label %24

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %59, %12
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.TYPE_10__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
