; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_info.c_rds_info_iter_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_info.c_rds_info_iter_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_info_iterator = type { i32* }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_info_iter_unmap(%struct.rds_info_iterator* %0) #0 {
  %2 = alloca %struct.rds_info_iterator*, align 8
  store %struct.rds_info_iterator* %0, %struct.rds_info_iterator** %2, align 8
  %3 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %2, align 8
  %4 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %2, align 8
  %9 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @KM_USER0, align 4
  %12 = call i32 @kunmap_atomic(i32* %10, i32 %11)
  %13 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %2, align 8
  %14 = getelementptr inbounds %struct.rds_info_iterator, %struct.rds_info_iterator* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
