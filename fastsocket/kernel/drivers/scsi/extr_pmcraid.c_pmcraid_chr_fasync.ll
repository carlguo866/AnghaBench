; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_chr_fasync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_chr_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pmcraid_instance* }
%struct.pmcraid_instance = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @pmcraid_chr_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_chr_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmcraid_instance*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %10, align 8
  store %struct.pmcraid_instance* %11, %struct.pmcraid_instance** %7, align 8
  %12 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %7, align 8
  %13 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %7, align 8
  %19 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %18, i32 0, i32 1
  %20 = call i32 @fasync_helper(i32 %15, %struct.file* %16, i32 %17, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %7, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %8, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
