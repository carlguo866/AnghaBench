; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_ssh_krl_set_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_krl.c_ssh_krl_set_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh_krl = type { i32* }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_krl_set_comment(%struct.ssh_krl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh_krl*, align 8
  %5 = alloca i8*, align 8
  store %struct.ssh_krl* %0, %struct.ssh_krl** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.ssh_krl*, %struct.ssh_krl** %4, align 8
  %7 = getelementptr inbounds %struct.ssh_krl, %struct.ssh_krl* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @free(i32* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @strdup(i8* %10)
  %12 = load %struct.ssh_krl*, %struct.ssh_krl** %4, align 8
  %13 = getelementptr inbounds %struct.ssh_krl, %struct.ssh_krl* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = icmp eq i32* %11, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
