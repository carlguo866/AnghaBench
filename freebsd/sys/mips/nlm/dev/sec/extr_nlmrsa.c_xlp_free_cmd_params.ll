; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmrsa.c_xlp_free_cmd_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/sec/extr_nlmrsa.c_xlp_free_cmd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_rsa_command = type { %struct.xlp_rsa_command*, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp_rsa_command*)* @xlp_free_cmd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_free_cmd_params(%struct.xlp_rsa_command* %0) #0 {
  %2 = alloca %struct.xlp_rsa_command*, align 8
  store %struct.xlp_rsa_command* %0, %struct.xlp_rsa_command** %2, align 8
  %3 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %2, align 8
  %4 = icmp eq %struct.xlp_rsa_command* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %2, align 8
  %8 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %7, i32 0, i32 0
  %9 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %8, align 8
  %10 = icmp ne %struct.xlp_rsa_command* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %2, align 8
  %13 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %2, align 8
  %18 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %17, i32 0, i32 0
  %19 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %18, align 8
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = call i32 @contigfree(%struct.xlp_rsa_command* %19, i32 4, i32 %20)
  br label %28

22:                                               ; preds = %11
  %23 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %2, align 8
  %24 = getelementptr inbounds %struct.xlp_rsa_command, %struct.xlp_rsa_command* %23, i32 0, i32 0
  %25 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %24, align 8
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = call i32 @free(%struct.xlp_rsa_command* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  br label %29

29:                                               ; preds = %28, %6
  %30 = load %struct.xlp_rsa_command*, %struct.xlp_rsa_command** %2, align 8
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = call i32 @free(%struct.xlp_rsa_command* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @contigfree(%struct.xlp_rsa_command*, i32, i32) #1

declare dso_local i32 @free(%struct.xlp_rsa_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
