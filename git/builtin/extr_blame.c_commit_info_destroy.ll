; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_commit_info_destroy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_commit_info_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_info = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_info*)* @commit_info_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_info_destroy(%struct.commit_info* %0) #0 {
  %2 = alloca %struct.commit_info*, align 8
  store %struct.commit_info* %0, %struct.commit_info** %2, align 8
  %3 = load %struct.commit_info*, %struct.commit_info** %2, align 8
  %4 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %3, i32 0, i32 6
  %5 = call i32 @strbuf_release(i32* %4)
  %6 = load %struct.commit_info*, %struct.commit_info** %2, align 8
  %7 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %6, i32 0, i32 5
  %8 = call i32 @strbuf_release(i32* %7)
  %9 = load %struct.commit_info*, %struct.commit_info** %2, align 8
  %10 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %9, i32 0, i32 4
  %11 = call i32 @strbuf_release(i32* %10)
  %12 = load %struct.commit_info*, %struct.commit_info** %2, align 8
  %13 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %12, i32 0, i32 3
  %14 = call i32 @strbuf_release(i32* %13)
  %15 = load %struct.commit_info*, %struct.commit_info** %2, align 8
  %16 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %15, i32 0, i32 2
  %17 = call i32 @strbuf_release(i32* %16)
  %18 = load %struct.commit_info*, %struct.commit_info** %2, align 8
  %19 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %18, i32 0, i32 1
  %20 = call i32 @strbuf_release(i32* %19)
  %21 = load %struct.commit_info*, %struct.commit_info** %2, align 8
  %22 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %21, i32 0, i32 0
  %23 = call i32 @strbuf_release(i32* %22)
  ret void
}

declare dso_local i32 @strbuf_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
