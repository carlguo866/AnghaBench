; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_audit_buf = type { i64, %struct.tty_audit_buf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_audit_buf*)* @tty_audit_buf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_audit_buf_free(%struct.tty_audit_buf* %0) #0 {
  %2 = alloca %struct.tty_audit_buf*, align 8
  store %struct.tty_audit_buf* %0, %struct.tty_audit_buf** %2, align 8
  %3 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %4 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %10 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %9, i32 0, i32 1
  %11 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %10, align 8
  %12 = call i32 @kfree(%struct.tty_audit_buf* %11)
  %13 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %14 = call i32 @kfree(%struct.tty_audit_buf* %13)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
