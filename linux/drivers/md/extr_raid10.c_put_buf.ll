; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_put_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_put_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.r10conf* }
%struct.r10conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10bio*)* @put_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_buf(%struct.r10bio* %0) #0 {
  %2 = alloca %struct.r10bio*, align 8
  %3 = alloca %struct.r10conf*, align 8
  store %struct.r10bio* %0, %struct.r10bio** %2, align 8
  %4 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %5 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  store %struct.r10conf* %8, %struct.r10conf** %3, align 8
  %9 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %10 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %11 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %10, i32 0, i32 0
  %12 = call i32 @mempool_free(%struct.r10bio* %9, i32* %11)
  %13 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %14 = call i32 @lower_barrier(%struct.r10conf* %13)
  ret void
}

declare dso_local i32 @mempool_free(%struct.r10bio*, i32*) #1

declare dso_local i32 @lower_barrier(%struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
