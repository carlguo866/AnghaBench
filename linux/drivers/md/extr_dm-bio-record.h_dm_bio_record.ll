; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-record.h_dm_bio_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-record.h_dm_bio_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_details = type { i32, i32, i32, i32 }
%struct.bio = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bio_details*, %struct.bio*)* @dm_bio_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_bio_record(%struct.dm_bio_details* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_bio_details*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.dm_bio_details* %0, %struct.dm_bio_details** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %9 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %14 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %19 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dm_bio_details*, %struct.dm_bio_details** %3, align 8
  %24 = getelementptr inbounds %struct.dm_bio_details, %struct.dm_bio_details* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
