; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_key_free_user_ns.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_key_free_user_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32, i32, i32 }

@keyring_name_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_free_user_ns(%struct.user_namespace* %0) #0 {
  %2 = alloca %struct.user_namespace*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %2, align 8
  %3 = call i32 @write_lock(i32* @keyring_name_lock)
  %4 = load %struct.user_namespace*, %struct.user_namespace** %2, align 8
  %5 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %4, i32 0, i32 2
  %6 = call i32 @list_del_init(i32* %5)
  %7 = call i32 @write_unlock(i32* @keyring_name_lock)
  %8 = load %struct.user_namespace*, %struct.user_namespace** %2, align 8
  %9 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @key_put(i32 %10)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @key_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
