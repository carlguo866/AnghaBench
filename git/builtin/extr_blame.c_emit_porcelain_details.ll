; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_emit_porcelain_details.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_emit_porcelain_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MORE_THAN_ONE_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_origin*, i32)* @emit_porcelain_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_porcelain_details(%struct.blame_origin* %0, i32 %1) #0 {
  %3 = alloca %struct.blame_origin*, align 8
  %4 = alloca i32, align 4
  store %struct.blame_origin* %0, %struct.blame_origin** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @emit_one_suspect_detail(%struct.blame_origin* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %11 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MORE_THAN_ONE_PATH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9, %2
  %20 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %21 = call i32 @write_filename_info(%struct.blame_origin* %20)
  br label %22

22:                                               ; preds = %19, %9
  ret void
}

declare dso_local i64 @emit_one_suspect_detail(%struct.blame_origin*, i32) #1

declare dso_local i32 @write_filename_info(%struct.blame_origin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
