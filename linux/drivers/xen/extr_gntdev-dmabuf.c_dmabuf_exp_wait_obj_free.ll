; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_wait_obj_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_wait_obj_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_dmabuf_priv = type { i32 }
%struct.gntdev_dmabuf_wait_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_wait_obj*)* @dmabuf_exp_wait_obj_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmabuf_exp_wait_obj_free(%struct.gntdev_dmabuf_priv* %0, %struct.gntdev_dmabuf_wait_obj* %1) #0 {
  %3 = alloca %struct.gntdev_dmabuf_priv*, align 8
  %4 = alloca %struct.gntdev_dmabuf_wait_obj*, align 8
  store %struct.gntdev_dmabuf_priv* %0, %struct.gntdev_dmabuf_priv** %3, align 8
  store %struct.gntdev_dmabuf_wait_obj* %1, %struct.gntdev_dmabuf_wait_obj** %4, align 8
  %5 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %3, align 8
  %6 = getelementptr inbounds %struct.gntdev_dmabuf_priv, %struct.gntdev_dmabuf_priv* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %4, align 8
  %9 = getelementptr inbounds %struct.gntdev_dmabuf_wait_obj, %struct.gntdev_dmabuf_wait_obj* %8, i32 0, i32 0
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %3, align 8
  %12 = getelementptr inbounds %struct.gntdev_dmabuf_priv, %struct.gntdev_dmabuf_priv* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.gntdev_dmabuf_wait_obj*, %struct.gntdev_dmabuf_wait_obj** %4, align 8
  %15 = call i32 @kfree(%struct.gntdev_dmabuf_wait_obj* %14)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.gntdev_dmabuf_wait_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
