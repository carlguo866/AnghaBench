; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_pad_uncommitted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_pad_uncommitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [145 x i8] c"journal_sections %u, journal_section_entries %u, n_uncommitted_sections %u, n_committed_sections %u, journal_section_entries %u, free_sectors %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*)* @pad_uncommitted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad_uncommitted(%struct.dm_integrity_c* %0) #0 {
  %2 = alloca %struct.dm_integrity_c*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %2, align 8
  %3 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %4 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %9 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %13 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %17 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 8
  %22 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %23 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %25 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %29 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %30 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %29, i32 0, i32 5
  %31 = call i32 @wraparound_section(%struct.dm_integrity_c* %28, i32* %30)
  %32 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %33 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %7, %1
  %37 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %38 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %41 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %45 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %48 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %46, %49
  %51 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %52 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %56 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %54, %57
  %59 = icmp ne i32 %43, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %36
  %64 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %65 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %68 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %71 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %74 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %77 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %2, align 8
  %80 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DMCRIT(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %63, %36
  ret void
}

declare dso_local i32 @wraparound_section(%struct.dm_integrity_c*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DMCRIT(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
