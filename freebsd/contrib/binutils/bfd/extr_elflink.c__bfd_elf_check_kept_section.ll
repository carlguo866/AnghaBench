; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_check_kept_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_check_kept_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_7__* }
%struct.bfd_link_info = type { i32 }

@SEC_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @_bfd_elf_check_kept_section(%struct.TYPE_7__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SEC_GROUP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %22 = call %struct.TYPE_7__* @match_group_member(%struct.TYPE_7__* %19, %struct.TYPE_7__* %20, %struct.bfd_link_info* %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  br label %23

23:                                               ; preds = %18, %11
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %35

35:                                               ; preds = %34, %26, %23
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  br label %39

39:                                               ; preds = %35, %2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %40
}

declare dso_local %struct.TYPE_7__* @match_group_member(%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
