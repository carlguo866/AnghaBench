; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*)* @keyring_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_match(%struct.key* %0, i8* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i8*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.key*, %struct.key** %3, align 8
  %6 = getelementptr inbounds %struct.key, %struct.key* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.key*, %struct.key** %3, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i64 %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i1 [ false, %2 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
