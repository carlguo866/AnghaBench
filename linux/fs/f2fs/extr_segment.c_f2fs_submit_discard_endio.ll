; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_submit_discard_endio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_submit_discard_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64 }
%struct.discard_cmd = type { i64, i32, i32, i32, i32 }

@D_SUBMIT = common dso_local global i64 0, align 8
@D_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @f2fs_submit_discard_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_submit_discard_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.discard_cmd*, align 8
  %4 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.discard_cmd*
  store %struct.discard_cmd* %8, %struct.discard_cmd** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @blk_status_to_errno(i32 %11)
  %13 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %1
  %28 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @D_SUBMIT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i64, i64* @D_DONE, align 8
  %35 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %37, i32 0, i32 2
  %39 = call i32 @complete_all(i32* %38)
  br label %40

40:                                               ; preds = %33, %27, %1
  %41 = load %struct.discard_cmd*, %struct.discard_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.bio*, %struct.bio** %2, align 8
  %46 = call i32 @bio_put(%struct.bio* %45)
  ret void
}

declare dso_local i32 @blk_status_to_errno(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
