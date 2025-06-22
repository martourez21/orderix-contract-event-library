# Orderix Contract Event Library

A Java library that defines Avro-based contract events and commands for implementing a **Saga Orchestration pattern** in distributed microservices. This library is designed specifically for the Orderix platform and enables reliable and traceable communication between services such as Order, Inventory, Orchestrator, and Customer services.

---

## 📦 Package

`com.orderix.contracteventlibrary`

---

## 📌 Current Version

```

0.0.1-SNAPSHOT

````

---

## 📚 Features

- Provides **Avro schemas** for all contract events and commands
- Supports both **single-item** and **bulk operations**
- Enables correlation across distributed systems using `sagaId`
- Simplifies Kafka message exchange using well-defined contracts
- Ensures consistency and traceability in a **Saga orchestration workflow**

---

## 🧩 Included Events and Commands

### 🛒 Order Flow Events
- `OrderPlacedEvent`
- `OrderCanceledEvent`

### 🧾 Inventory Flow Events
- `ReserveInventoryCommand`
- `InventoryReservedEvent`
- `InventoryOutOfStockEvent`
- `ReleaseInventoryCommand`
- `InventoryReleasedEvent`

### 🧱 Item Creation Events
- `ItemCreatedEvent` (single)
- `BulkItemCreatedEvent` (batch)

---

## 🔗 Integration Usage

### 1. Add Dependency (Maven)

```xml
<dependency>
    <groupId>com.orderix</groupId>
    <artifactId>orderix-contract-event-library</artifactId>
    <version>0.0.1-SNAPSHOT</version>
</dependency>
````

### 2. Use with Avro + Kafka (Spring Boot Example)

```java
@KafkaListener(topics = "order.placed", groupId = "orchestrator")
public void handleOrderPlaced(OrderPlacedEvent event) {
    log.info("Processing order with sagaId={}", event.getSagaId());
    // Orchestration logic here...
}
```

---

## 📁 Project Structure

```
src/main/java/com/orderix/contracteventlibrary/
├── order/events/OrderPlacedEvent.avsc
├── order/events/OrderCanceledEvent.avsc
├── inventory/commands/ReserveInventoryCommand.avsc
├── inventory/events/InventoryReservedEvent.avsc
├── inventory/events/InventoryOutOfStockEvent.avsc
├── inventory/commands/ReleaseInventoryCommand.avsc
├── inventory/events/InventoryReleasedEvent.avsc
├── catalog/events/ItemCreatedEvent.avsc
└── catalog/events/BulkItemCreatedEvent.avsc
```

---

## ✅ Best Practices

* Always include a `sagaId` in every event/command from the saga orchestrator to ensure traceability.
* Validate schema compatibility when updating versions.
* Use these schemas for **API-first development and testing** (e.g., with Mock Kafka, Testcontainers).

---

## 📜 License

This library is provided under the MIT License unless stated otherwise.

---

## 👥 Maintainers

* **Author**: Nestor A. A.
* **Contact**: nestorabiawuh@gmail.com

---

## 🚀 Contributions

Contributions are welcome! Feel free to fork, open an issue, or submit a pull request.

```